const _ = require('lodash');

const { Artwork, Artist } = require('../config/db.config');

const { artistPresenter, artworkPresenter } = require('./presenter');

class ArtistController {
  constructor() {
    this.artist = Artist;
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

  async createArtist(req) {
    const {
      name,
      date_of_birth,
      date_of_died,
      country,
      epoch,
      style,
      description
    } = req.body;

    const artist = await this.artist.create({
      name: name,
      date_born: date_of_birth,
      date_died: date_of_died,
      country_of_origin: country,
      epoch: epoch,
      main_style: style,
      description: description
    });

    return [artistPresenter(artist)];
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

  async findArtworksByArtistId(id) {
    const artist = await this.artist.findOne({
      where: {
        artist_id: id
      },
      include: [Artwork]
    });
    const artworks = artist['art_objects'];

    return _.map(artworks, artwork => {
      return artworkPresenter(artwork);
    });
  }
}

module.exports = ArtistController;
