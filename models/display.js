const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

const Display = sequelize.define(
  'display',
  {
    exhibition_id: Sequelize.STRING(45),
    art_object_id: Sequelize.STRING(45)
  },
  {
    timestamps: false,
    freezeTableName: true
  }
);

module.exports = Display;
