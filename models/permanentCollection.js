module.exports = (sequelize, Sequelize) => {
  const PermanentCollection = sequelize.define(
    'permanent_collection',
    {
      art_object_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      collection_id: Sequelize.INTEGER,
      date_acquired: Sequelize.DATE,
      status: Sequelize.STRING(45),
      cost: Sequelize.INTEGER
    },
    {
      indexes: [
        {
          name: 'permanent_artworkId_collectionId_index',
          fields: ['art_object_type_id', 'collection_id']
        },
        {
          name: 'permanent_artworkId_status_index',
          fields: ['art_object_type_id', 'status']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return PermanentCollection;
};
