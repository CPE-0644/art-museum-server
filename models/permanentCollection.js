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
      timestamps: false,
      freezeTableName: true
    }
  );

  return PermanentCollection;
};
