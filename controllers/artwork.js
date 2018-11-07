const _ = require('lodash');

const { Artwork, Artist } = require('../config/db.config');
const {
  PaintingArtwork,
  StatueArtwork,
  SculptureArtwork,
  OtherArtwork
} = require('../config/db.config');

const {
  artworkPresenter,
  artworkTypePresenter,
  artistPresenter,
  sculpturePresenter,
  statuePresenter,
  paintingPresenter,
  otherPresenter
} = require('./presenter');

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

  async updateArtwork(newParams, id) {
    const { year, title, description, origin, epoch, artist_id } = newParams;
    const artwork = await this.artwork.findOne({
      where: {
        Id_no: id
      }
    });

    artwork.update(
      {
        Years: year,
        Title: title,
        Description: description,
        Origin: origin,
        Epoch: epoch,
        artist_id: artist_id
      },
      {
        fields: this.artworkAttributes
      }
    );

    return [artworkPresenter(artwork)];
  }

  async findAll() {
    const paintings = await this.findPaintings();
    const sculptures = await this.findSculptures();
    const statues = await this.findStatues();
    const others = await this.findOthers();

    const artworks = [...paintings, ...sculptures, ...statues, ...others];

    return _.map(artworks, artwork => {
      return artworkTypePresenter(artwork);
    });
  }

  async findSculptures() {
    const artworks = await this.artwork.findAll({
      raw: true,
      include: [SculptureArtwork]
    });

    const sculptures = _.filter(artworks, artwork => {
      return artwork['sculpture.art_object_type_id'];
    });

    return _.map(sculptures, sculpture => {
      return sculpturePresenter(sculpture);
    });
  }
  async findStatues() {
    const artworks = await this.artwork.findAll({
      raw: true,
      include: [StatueArtwork]
    });

    const statues = _.filter(artworks, artwork => {
      return artwork['statue.art_object_type_id'];
    });

    return _.map(statues, statue => {
      return statuePresenter(statue);
    });
  }

  async findPaintings() {
    const artworks = await this.artwork.findAll({
      raw: true,
      include: [PaintingArtwork]
    });

    const paintings = _.filter(artworks, artwork => {
      return artwork['painting.art_object_type_id'];
    });

    return _.map(paintings, painting => {
      return paintingPresenter(painting);
    });
  }

  async findOthers() {
    const artworks = await this.artwork.findAll({
      raw: true,
      include: [OtherArtwork]
    });

    const others = _.filter(artworks, artwork => {
      return artwork['other.art_object_type_id'];
    });

    return _.map(others, other => {
      return otherPresenter(other);
    });
  }

  async findArtworkById(id) {
    const sculpture = await this.artwork.findOne({
      raw: true,
      where: { Id_no: id },
      include: [SculptureArtwork]
    });
    const statue = await this.artwork.findOne({
      raw: true,
      where: { Id_no: id },
      include: [StatueArtwork]
    });
    const painting = await this.artwork.findOne({
      raw: true,
      where: { Id_no: id },
      include: [PaintingArtwork]
    });
    const other = await this.artwork.findOne({
      raw: true,
      where: { Id_no: id },
      include: [OtherArtwork]
    });

    if (sculpture['sculpture.art_object_type_id'])
      return sculpturePresenter(sculpture);
    else if (statue['statue.art_object_type_id'])
      return statuePresenter(statue);
    else if (painting['painting.art_object_type_id'])
      return paintingPresenter(painting);
    else if (other['other.art_object_type_id']) return otherPresenter(other);
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

  async deleteArtwork(id) {
    const artwork = await this.artwork.findOne({
      where: {
        Id_no: id
      }
    });

    artwork.destroy();

    return null;
  }
}

module.exports = ArtworkController;
