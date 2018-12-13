module.exports = (sequelize, Sequelize) => {
  const Visit = sequelize.define(
    'visit',
    {
      exhibition_id: Sequelize.INTEGER,
      museum_goer_id: Sequelize.INTEGER
    },
    {
      indexes: [
        {
          name: 'exhibitionId_userId_index',
          fields: ['exhibition_id', 'museum_goer_id']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );
  return Visit;
};
