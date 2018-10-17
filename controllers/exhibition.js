const _ = require('lodash');

const { exhibitions } = require('../assets/database/exhibitions.json');

function findAll() {
  return exhibitions;
}

function findExhibitionById(id) {
  const exhibition = _.find(
    exhibitions,
    exhibition => exhibition['exhibition-id'] == id
  );
  return exhibition;
}

module.exports = {
  findAll,
  findExhibitionById
};
