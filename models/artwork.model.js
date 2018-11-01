module.exports = (sequelize, Sequelize) => {
  const Artwork = sequelize.define(
    'art_object',
    {
      Id_no: {
        type: Sequelize.STRING(45),
        primaryKey: true
      },
      Years: Sequelize.DATE,
      Title: Sequelize.STRING(45),
      Description: Sequelize.TEXT,
      Origin: Sequelize.STRING(45),
      Epoch: Sequelize.STRING(45),
      artist_id: Sequelize.STRING(45)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return Artwork;
};
