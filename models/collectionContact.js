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
      indexes: [
        {
          name: 'contact_id_name_index',
          fields: ['contact_id', 'name']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return CollectionContact;
};
