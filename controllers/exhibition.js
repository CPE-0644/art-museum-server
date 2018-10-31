const _ = require('lodash');

const Exhibition = require('../models/Exhibition')();

const exhibitionAttributes = [
  'exhibition_id',
  'Name',
  'Start_date',
  'End_date',
  'number_limit_visitor'
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
    name: exhibition.Name,
    start_date: exhibition.Start_date,
    end_date: exhibition.End_date,
    supported_visitor: exhibition.number_limit_visitor
  };
}
module.exports = {
  findAll,
  findExhibitionById
};
