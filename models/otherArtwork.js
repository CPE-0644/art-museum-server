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
      indexes: [
        {
          name: 'other_artwork_id_type_index',
          fields: ['art_object_type_id', 'type']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return OtherArtwork;
};
