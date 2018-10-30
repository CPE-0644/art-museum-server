const _ = require('lodash');

const Exhibition = require('../models/Exhibition')();

const exhibitionAttributes = [
  'exhibition_id',
  'name',
  'start_date',
  'end_date'
];

async function findAll() {
  const exhibitions = await Exhibition.findAll({
    attributes: exhibitionAttributes
  });

  return _.map(exhibitions, exhibition => {
    return exhibitionPresenter(exhibition);
  });
}

async function findExhibitionById(id) {
  const exhibition = await Exhibition.findAll({
    attributes: exhibitionAttributes,
    where: {
      exhibition_id: id
    }
  });

  return _.map(exhibition, exhibition => {
    return exhibitionPresenter(exhibition);
  });
}

function exhibitionPresenter(exhibition) {
  return {
    id: exhibition.exhibition_id,
    name: exhibition.name,
    start_date: exhibition.start_date,
    end_date: exhibition.end_date
  };
}
module.exports = {
  findAll,
  findExhibitionById
};
