module.exports = (sequelize, Sequelize) => {
  const Display = sequelize.define(
    'display',
    {
      exhibition_id: Sequelize.INTEGER,
      art_object_id: Sequelize.INTEGER
    },
    {
      indexes: [
        {
          name: 'exhibitionId_artworkId_index',
          fields: ['exhibition_id', 'art_object_id']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return Display;
};
