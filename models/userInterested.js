module.exports = (sequelize, Sequelize) => {
  const UserInterested = sequelize.define(
    'museum_goer_interested_type',
    {
      museum_goer_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      Interested_type: Sequelize.STRING(45)
    },
    {
      indexes: [
        {
          name: 'user_id_interested_index',
          fields: ['museum_goer_id', 'Interested_type']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return UserInterested;
};
