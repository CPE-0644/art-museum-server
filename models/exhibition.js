const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

const Exhibition = sequelize.define(
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
    timestamps: false,
    freezeTableName: true
  }
);

module.exports = Exhibition;
