const _ = require('lodash');

const { Artwork, Artist } = require('../config/db.config');

const { artworkPresenter, artistPresenter } = require('./presenter');

class ArtworkController {
  constructor(artwork) {
    this.artwork = Artwork;
    this.artworkAttributes = [
      'Id_no',
      'Years',
      'Title',
      'Description',
      'Origin',
      'Epoch',
      'artist_id'
    ];
  }

  async createArtwork(params) {
    const { year, title, description, origin, epoch, artist_id } = params;

    const artwork = await this.artwork.create({
      Years: year,
      Title: title,
      Description: description,
      Origin: origin,
      Epoch: epoch,
      artist_id: artist_id
    });

    return [artworkPresenter(artwork)];
  }

  async findAll() {
    const artworks = await this.artwork.findAll();

    return _.map(artworks, artwork => {
      return artworkPresenter(artwork);
    });
  }

  async findArtworkById(id) {
    const artwork = await this.artwork.findAll({
      where: {
        Id_no: id
      }
    });

    return _.map(artwork, artwork => {
      return artworkPresenter(artwork);
    });
  }

  async findArtistByArtworkId(id) {
    const artwork = await this.artwork.findOne({
      where: {
        Id_no: id
      },
      include: [Artist]
    });

    const artist = artwork['artist'];

    return [artistPresenter(artist)];
  }
}

module.exports = ArtworkController;
