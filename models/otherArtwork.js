module.exports = (sequelize, Sequelize) => {
  const OtherArtwork = sequelize.define(
    'other',
    {
      art_object_type_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      style: Sequelize.STRING(45),
      type: Sequelize.STRING(45)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return OtherArtwork;
};
