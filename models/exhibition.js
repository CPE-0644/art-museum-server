const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

function createExhibitionModel() {
  return sequelize.define(
    'exhibition',
    {
      exhibition_id: {
        type: Sequelize.STRING(45),
        primaryKey: true
      },
      Name: Sequelize.STRING(45),
      Start_date: Sequelize.DATE,
      End_date: Sequelize.DATE,
      number_limit_visitor: Sequelize.INTEGER
    },
    {
      freezeTableName: true
    }
  );
}

module.exports = createExhibitionModel;
