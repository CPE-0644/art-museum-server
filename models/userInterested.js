const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

const UserInterested = sequelize.define(
  'museum_goer_interested_type',
  {
    museum_goer_id: {
      type: Sequelize.STRING(45),
      primaryKey: true
    },
    Interested_type: Sequelize.STRING(45)
  },
  {
    timestamps: false,
    freezeTableName: true
  }
);

module.exports = UserInterested;
