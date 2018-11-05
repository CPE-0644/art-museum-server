const _ = require('lodash');

const { Artwork, Artist } = require('../config/db.config');

const { artistPresenter, artworkPresenter } = require('./presenter');

class ArtistController {
  constructor() {
    this.artist = Artist;
    this.artistAttributes = [
      'name',
      'isAdmin',
      'date_born',
      'date_died',
      'country_of_origin',
      'epoch',
      'main_style',
      'description'
    ];
  }

  async createArtist(params) {
    const {
      name,
      isAdmin,
      date_of_birth,
      date_of_died,
      country,
      epoch,
      style,
      description
    } = params;

    const artist = await this.artist.create({
      name: name,
      isAdmin,
      isAdmin,
      date_born: date_of_birth,
      date_died: date_of_died,
      country_of_origin: country,
      epoch: epoch,
      main_style: style,
      description: description
    });

    return [artistPresenter(artist)];
  }

  async updateArtist(newParams, id) {
    const {
      name,
      isAdmin,
      date_of_birth,
      date_of_died,
      country,
      epoch,
      style,
      description
    } = newParams;

    const artist = await this.artist.findOne({
      where: {
        artist_id: id
      }
    });

    artist.update(
      {
        name: name,
        isAdmin: isAdmin,
        date_born: date_of_birth,
        date_died: date_of_died,
        country_of_origin: country,
        epoch: epoch,
        main_style: style,
        description: description
      },
      {
        fields: this.artistAttributes
      }
    );

    return [artistPresenter(artist)];
  }

  async findAll() {
    const artists = await this.artist.findAll();

    return _.map(artists, artist => {
      return artistPresenter(artist);
    });
  }

  async findArtistById(id) {
    const artist = await this.artist.findAll({
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

  async deleteArtist(id) {
    const artist = await this.artist.findOne({
      where: {
        artist_id: id
      }
    });

    artist.destroy();

    return null;
  }
}

module.exports = ArtistController;
