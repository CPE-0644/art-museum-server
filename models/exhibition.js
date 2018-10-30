const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

function createExhibitionModel() {
  return sequelize.define(
    'exhibition',
    {
      exhibition_id: {
        type: Sequelize.STRING,
        primaryKey: true
      },
      name: Sequelize.STRING,
      start_date: Sequelize.DATE,
      end_date: Sequelize.DATE
    },
    {
      freezeTableName: true
    }
  );
}

module.exports = createExhibitionModel;
