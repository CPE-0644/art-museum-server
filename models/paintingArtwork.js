module.exports = (sequelize, Sequelize) => {
  const PaintingArtwork = sequelize.define(
    'painting',
    {
      art_object_type_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      paint_type: Sequelize.STRING(45),
      drawn_on: Sequelize.STRING(45),
      style: Sequelize.STRING(45)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return PaintingArtwork;
};
