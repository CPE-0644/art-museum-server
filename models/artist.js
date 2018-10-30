const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

function createArtistModel() {
  return sequelize.define(
    'artist',
    {
      artist_id: {
        type: Sequelize.STRING(45),
        primaryKey: true
      },
      name: Sequelize.STRING(45),
      date_born: Sequelize.DATE,
      date_died: Sequelize.DATE,
      country_of_origin: Sequelize.STRING(45),
      epoch: Sequelize.STRING(45),
      main_style: Sequelize.STRING(45),
      description: Sequelize.TEXT
    },
    {
      freezeTableName: true
    }
  );
}

module.exports = createArtistModel;
