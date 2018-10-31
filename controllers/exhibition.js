const _ = require('lodash');

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
    const exhibitions = await this.exhibition.findAll({
      attributes: this.exhibitionAttributes
    });
    console.log(exhibitions);
    return _.map(exhibitions, exhibition => {
      return exhibitionPresenter(exhibition);
    });
  }

  async findExhibitionById(id) {
    const exhibition = await this.exhibition.findAll({
      attributes: this.exhibitionAttributes,
      where: {
        exhibition_id: id
      }
    });

    return _.map(exhibition, exhibition => {
      return exhibitionPresenter(exhibition);
    });
  }
}

module.exports = ExhibitionController;
