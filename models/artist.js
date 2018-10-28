const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

function createArtistModel() {
  return sequelize.define(
    'artist',
    {
      artist_id: {
        type: Sequelize.STRING,
        primaryKey: true
      },
      name: Sequelize.STRING,
      date_born: Sequelize.DATE,
      date_died: Sequelize.DATE,
      country_of_origin: Sequelize.STRING,
      epoch: Sequelize.STRING,
      main_style: Sequelize.STRING,
      description: Sequelize.STRING
    },
    {
      freezeTableName: true
    }
  );
}

module.exports = createArtistModel;
