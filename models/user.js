module.exports = (sequelize, Sequelize) => {
  const User = sequelize.define(
    'museum_goer',
    {
      museum_goer_id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      role: Sequelize.STRING(45),
      Name: Sequelize.STRING(45),
      username: Sequelize.STRING(45),
      password: Sequelize.STRING(45),
      address: Sequelize.STRING(45),
      email: Sequelize.STRING(45),
      phone: Sequelize.STRING(10),
      age: Sequelize.INTEGER(11)
    },
    {
      indexes: [
        {
          name: 'userId_name_username_index',
          fields: ['museum_goer_id', 'name', 'username']
        },
        {
          name: 'user_role_index',
          files: ['museum_goer_id', 'role']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return User;
};
