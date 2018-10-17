const _ = require('lodash');

const { exhibitions } = require('../models/exhibition');

function findAll() {
  return exhibitions;
}

function findExhibitionById(id) {
  const exhibition = _.find(exhibitions, exhibition => exhibition.id == id);
  return exhibition;
}

module.exports = {
  findAll,
  findExhibitionById
};
