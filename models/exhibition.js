module.exports = (sequelize, Sequelize) => {
  const Exhibition = sequelize.define(
    'exhibition',
    {
      exhibition_id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      Name: Sequelize.STRING(45),
      Start_date: Sequelize.DATE,
      End_date: Sequelize.DATE,
      number_limit_visitor: Sequelize.INTEGER
    },
    {
      indexes: [
        {
          name: 'exhibition_id_name_index',
          fields: ['exhibition_id', 'name']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return Exhibition;
};
