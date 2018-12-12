module.exports = (sequelize, Sequelize) => {
  const Display = sequelize.define(
    'display',
    {
      exhibition_id: Sequelize.INTEGER,
      art_object_id: Sequelize.INTEGER
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return Display;
};
