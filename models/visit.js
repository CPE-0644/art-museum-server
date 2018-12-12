module.exports = (sequelize, Sequelize) => {
  const Visit = sequelize.define(
    'visit',
    {
      exhibition_id: Sequelize.INTEGER,
      museum_goer_id: Sequelize.INTEGER
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );
  return Visit;
};
