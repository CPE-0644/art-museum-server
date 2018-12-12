const _ = require('lodash');

const {
  Artwork,
  Exhibition,
  User,
  Visit,
  Display
} = require('../config/db.config');

const {
  exhibitionPresenter,
  artworkPresenter,
  exhibitionUsersPresenter
} = require('./presenter');

class ExhibitionController {
  constructor(exhibition) {
    this.exhibition = Exhibition;
    this.exhibitionAttributes = [
      'Name',
      'Start_date',
      'End_date',
      'number_limit_visitor'
    ];
  }

  async createExhibition(params) {
    const { id, name, start_date, end_date, supported_visitor } = params;

    const exhibition = await this.exhibition.create({
      exhibition_id: id,
      Name: name,
      Start_date: start_date,
      End_date: end_date,
      number_limit_visitor: supported_visitor
    });

    return [exhibitionPresenter(exhibition)];
  }

  async createExhibitionUser(params, exhibitionId) {
    const { museum_goer_id } = params;

    const visit = await Visit.create({
      exhibition_id: exhibitionId,
      museum_goer_id: museum_goer_id
    });
  }

  async updateExhibition(newParams, id) {
    const { name, start_date, end_date, supported_visitor } = newParams;
    const exhibition = await this.exhibition.findOne({
      where: {
        exhibition_id: id
      }
    });

    exhibition.update(
      {
        Name: name,
        Start_date: start_date,
        End_date: end_date,
        number_limit_visitor: supported_visitor
      },
      {
        fields: this.exhibitionAttributes
      }
    );

    return [exhibitionPresenter(exhibition)];
  }

  async updateExhibitionArtworks(newParams, id) {
    const artworksId = newParams;
    console.log(artworksId);
    let display = await Display.destroy({
      where: {
        exhibition_id: id
      }
    });

    display = await _.forEach(artworksId, artworkId => {
      Display.create({
        exhibition_id: id,
        art_object_id: artworkId
      });
    });

    return artworksId;
  }
  async findAll() {
    const exhibitions = await this.exhibition.findAll();
    return _.map(exhibitions, exhibition => {
      return exhibitionPresenter(exhibition);
    });
  }

  async findExhibitionById(id) {
    const exhibition = await this.exhibition.findAll({
      where: {
        exhibition_id: id
      }
    });

    return _.map(exhibition, exhibition => {
      return exhibitionPresenter(exhibition);
    });
  }

  async findArtworkByExhibitionId(id) {
    const exhibition = await this.exhibition.findOne({
      where: {
        exhibition_id: id
      },
      include: [
        {
          model: Artwork,
          through: {
            attributes: ['exhibition_id', 'art_object_id']
          }
        }
      ]
    });
    const artworks = exhibition['art_objects'];

    return _.map(artworks, artwork => {
      return artworkPresenter(artwork);
    });
  }

  async deleteExhibition(id) {
    const exhibition = await this.exhibition.findOne({
      where: {
        exhibition_id: id
      }
    });

    exhibition.destroy();

    return null;
  }

  async findVisitingUsersByExhibitionId(id) {
    const exhibition = await this.exhibition.findOne({
      where: {
        exhibition_id: id
      },
      include: [User]
    });

    return exhibitionUsersPresenter(exhibition);
  }
}

module.exports = ExhibitionController;
