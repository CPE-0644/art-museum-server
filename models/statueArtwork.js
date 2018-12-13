module.exports = (sequelize, Sequelize) => {
  const StatueArtwork = sequelize.define(
    'statue',
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
      indexes: [
        {
          name: 'statue_id_style_index',
          fields: ['art_object_type_id', 'style']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return StatueArtwork;
};
