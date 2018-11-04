module.exports = (sequelize, Sequelize) => {
  const Artwork = sequelize.define(
    'art_object',
    {
      Id_no: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      Years: Sequelize.STRING(4),
      Title: Sequelize.STRING(45),
      Description: Sequelize.TEXT,
      Origin: Sequelize.STRING(45),
      Epoch: Sequelize.STRING(45),
      artist_id: Sequelize.INTEGER
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return Artwork;
};
