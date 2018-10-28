const Sequelize = require('sequelize');

const sequelize = new Sequelize('art_museum', 'root', '1234', {
  host: 'localhost',
  dialect: 'mysql',

  pool: {
    max: 10,
    min: 0,
    idle: 10000
  }
});

module.exports = sequelize;
