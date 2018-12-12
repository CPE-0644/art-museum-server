module.exports = (sequelize, Sequelize) => {
  const SculptureArtwork = sequelize.define(
    'sculpture',
    {
      art_object_type_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      material: Sequelize.STRING(45),
      height: Sequelize.STRING(45),
      weight: Sequelize.STRING(45),
      style: Sequelize.STRING(45)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return SculptureArtwork;
};
