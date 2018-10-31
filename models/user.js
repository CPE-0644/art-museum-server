const Sequelize = require('sequelize');

const sequelize = require('../database/connection');

function createUserModel() {
  return sequelize.define(
    'museum_goer',
    {
      museum_goer_id: {
        type: Sequelize.STRING(45),
        primaryKey: true
      },
      Name: Sequelize.STRING(45),
      username: Sequelize.STRING(45),
      password: Sequelize.STRING(45),
      address: Sequelize.STRING(45),
      email: Sequelize.STRING(45),
      phone: Sequelize.STRING(10),
      age: Sequelize.INTEGER(11)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );
}

module.exports = createUserModel;
