const Sequelize = require('sequelize');

const sequelize = new Sequelize('art_museum', 'root', '1234', {
  host: 'localhost',
  dialect: 'mysql',

  pool: {
    max: 15,
    min: 0,
    idle: 10000
  }
});

// models
const Artist = require('../models/artist.model')(sequelize, Sequelize);
const Artwork = require('../models/artwork.model')(sequelize, Sequelize);
const Exhibition = require('../models/exhibition.model')(sequelize, Sequelize);
const Collection = require('../models/collection.model')(sequelize, Sequelize);
const User = require('../models/user.model')(sequelize, Sequelize);
const Display = require('../models/display.model')(sequelize, Sequelize);
const UserInterested = require('../models/userInterested.model')(
  sequelize,
  Sequelize
);

Artist.hasMany(Artwork, { foreignKey: 'artist_id' });
Artwork.belongsTo(Artist, { foreignKey: 'artist_id' });

Exhibition.belongsToMany(Artwork, {
  through: Display,
  foreignKey: 'exhibition_id',
  otherKey: 'art_object_id'
});
Artwork.belongsToMany(Exhibition, {
  through: Display,
  foreignKey: 'art_object_id',
  otherKey: 'exhibition_id'
});

User.hasMany(UserInterested, { foreignKey: 'museum_goer_id' });
UserInterested.belongsTo(User, { foreignKey: 'museum_goer_id' });

const db = {
  sequelize,
  Sequelize,
  Artwork,
  Artist,
  Exhibition,
  Collection,
  User,
  Display,
  UserInterested
};

module.exports = db;
