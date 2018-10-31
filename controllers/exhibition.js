const _ = require('lodash');

const { exhibitionPresenter } = require('./presenter');
const Artwork = require('../models/artwork')();
class ExhibitionController {
  constructor(exhibition) {
    this.exhibition = exhibition;
    this.exhibitionAttributes = [
      'exhibition_id',
      'Name',
      'Start_date',
      'End_date',
      'number_limit_visitor'
    ];
  }

  async findAll() {
    const exhibitions = await this.exhibition.findAll();
    console.log(exhibitions);
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

    return artworks;
  }
}

module.exports = ExhibitionController;
