module.exports = (sequelize, Sequelize) => {
  const BorrowedCollection = sequelize.define(
    'borrowed',
    {
      art_object_id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      collection_id: Sequelize.INTEGER,
      date_borrowed: Sequelize.DATE,
      date_returned: Sequelize.DATE
    },
    {
      timestamps: false,
      freezeTableName: true
    }
  );

  return BorrowedCollection;
};
