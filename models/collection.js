const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

function createCollectionModel() {
  return sequelize.define(
    'collection',
    {
      Collection_id: {
        type: Sequelize.STRING(45),
        primaryKey: true
      },
      Name: Sequelize.STRING(45),
      Type: Sequelize.STRING(45),
      Description: Sequelize.TEXT,
      Address: Sequelize.STRING(255),
      contact_id: Sequelize.STRING(45)
    },
    {
      freezeTableName: true
    }
  );
}

module.exports = createCollectionModel;
