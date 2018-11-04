module.exports = (sequelize, Sequelize) => {
  const Collection = sequelize.define(
    'collection',
    {
      Collection_id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      Name: Sequelize.STRING(45),
      Type: Sequelize.STRING(45),
      Description: Sequelize.TEXT,
      Address: Sequelize.STRING(255),
      contact_id: Sequelize.INTEGER
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return Collection;
};
