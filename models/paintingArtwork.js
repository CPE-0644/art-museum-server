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
      indexes: [
        {
          name: 'paint_id_type_index',
          fields: ['art_object_type_id', 'paint_type']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return PaintingArtwork;
};
