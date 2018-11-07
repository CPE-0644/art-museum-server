module.exports = (sequelize, Sequelize) => {
  const CollectionContact = sequelize.define(
    'contact_person',
    {
      contact_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      Name: Sequelize.STRING(45),
      Phone: Sequelize.STRING(45)
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return CollectionContact;
};
