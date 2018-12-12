const _ = require('lodash');

const { sequelize, Artwork, Artist } = require('../config/db.config');

const { artistPresenter, artworkPresenter } = require('./presenter');

class ArtistController {
  constructor() {
    this.artist = Artist;
    this.artistAttributes = [
      'name',
      'role',
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
      role,
      date_of_birth,
      date_of_died,
      country,
      epoch,
      style,
      description
    } = params;

    const artist = await this.artist.create({
      name: name,
      role: role,
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
      role,
      date_of_birth,
      date_of_died,
      country,
      epoch,
      style,
      description
    } = newParams;

    return sequelize.transaction(t => {
      return this.artist
        .findOne(
          {
            where: {
              artist_id: id
            }
          },
          { transaction: t }
        )
        .then(artist => {
          return artist.update(
            {
              name: name,
              role: role,
              date_born: date_of_birth,
              date_died: date_of_died,
              country_of_origin: country,
              epoch: epoch,
              main_style: style,
              description: description
            },
            {
              transaction: t,
              fields: this.artistAttributes
            }
          );
        })
        .then(artist => {
          return [artistPresenter(artist)];
        });
    });
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
