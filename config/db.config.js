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
const Artist = require('../models/artist')(sequelize, Sequelize);
const Artwork = require('../models/artwork')(sequelize, Sequelize);
const Exhibition = require('../models/exhibition')(sequelize, Sequelize);
const Collection = require('../models/collection')(sequelize, Sequelize);
const User = require('../models/user')(sequelize, Sequelize);
const Display = require('../models/display')(sequelize, Sequelize);
const Visit = require('../models/visit')(sequelize, Sequelize);
const UserInterested = require('../models/userInterested')(
  sequelize,
  Sequelize
);
const CollectionContact = require('../models/CollectionContact')(
  sequelize,
  Sequelize
);
const SculptureArtwork = require('../models/sculptureArtwork')(
  sequelize,
  Sequelize
);
const StatueArtwork = require('../models/statueArtwork')(sequelize, Sequelize);
const PaintingArtwork = require('../models/paintingArtwork')(
  sequelize,
  Sequelize
);
const OtherArtwork = require('../models/otherArtwork')(sequelize, Sequelize);
const PermanentCollection = require('../models/permanentCollection')(
  sequelize,
  Sequelize
);
const BorrowedCollection = require('../models/borrowedCollection')(
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

Exhibition.belongsToMany(User, {
  through: Visit,
  foreignKey: 'exhibition_id',
  // targetKey: 'exhibition_id',
  otherKey: 'museum_goer_id'
});
User.belongsToMany(Exhibition, {
  through: Visit,
  foreignKey: 'museum_goer_id',
  // targetKey: 'museum_goer_id',
  otherKey: 'exhibition_id'
});

User.hasMany(UserInterested, { foreignKey: 'museum_goer_id' });
UserInterested.belongsTo(User, { foreignKey: 'museum_goer_id' });

Collection.hasOne(CollectionContact, { foreignKey: 'contact_id' });
CollectionContact.belongsTo(Collection, { foreignKey: 'contact_id' });

SculptureArtwork.hasOne(Artwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
Artwork.belongsTo(SculptureArtwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
PaintingArtwork.hasOne(Artwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
Artwork.belongsTo(PaintingArtwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
StatueArtwork.hasOne(Artwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
Artwork.belongsTo(StatueArtwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
OtherArtwork.hasOne(Artwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});
Artwork.belongsTo(OtherArtwork, {
  foreignKey: 'Id_no',
  targetKey: 'art_object_type_id'
});

// Artwork.belongsTo(PermanentCollection, {
//   foreignKey: 'Id_no',
//   targetKey: 'art_object_id'
// });
// PermanentCollection.hasOne(Artwork, {
//   foreignKey: 'Id_no',
//   targetKey: 'art_object_type_id'
// });

// Artwork.belongsTo(BorrowedCollection, {
//   foreignKey: 'Id_no',
//   targetKey: 'art_object_id'
// });
// BorrowedCollection.hasOne(Artwork, {
//   foreignKey: 'Id_no',
//   targetKey: 'art_object_type_id'
// });

Collection.hasMany(PermanentCollection, {
  foreignKey: 'collection_id',
  sourceKey: 'Collection_id'
});
PermanentCollection.belongsTo(Collection, {
  foreignKey: 'collection_id',
  targetKey: 'Collection_id'
});

Collection.hasMany(BorrowedCollection, {
  foreignKey: 'collection_id',
  sourceKey: 'Collection_id'
});
BorrowedCollection.belongsTo(Collection, {
  foreignKey: 'collection_id',
  targetKey: 'Collection_id'
});

const db = {
  sequelize,
  Sequelize,
  Artwork,
  Artist,
  Exhibition,
  CollectionContact,
  User,
  Display,
  Visit,
  UserInterested,
  SculptureArtwork,
  StatueArtwork,
  PaintingArtwork,
  OtherArtwork,
  Collection,
  BorrowedCollection,
  PermanentCollection
};

module.exports = db;
