module.exports = (sequelize, Sequelize) => {
  const Display = sequelize.define(
    'display',
    {
      exhibition_id: Sequelize.STRING(45),
      art_object_id: Sequelize.STRING(45)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return Display;
};
