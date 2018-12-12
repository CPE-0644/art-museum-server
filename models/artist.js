module.exports = (sequelize, Sequelize) => {
  const Artist = sequelize.define(
    'artist',
    {
      artist_id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      name: Sequelize.STRING(45),
      date_born: Sequelize.DATE,
      date_died: Sequelize.DATE,
      country_of_origin: Sequelize.STRING(45),
      epoch: Sequelize.STRING(45),
      main_style: Sequelize.STRING(45),
      description: Sequelize.TEXT
    },
    {
      indexes: [
        {
          name: 'artist_id_name_index',
          fields: ['artist_id', 'name']
        }
      ],
      timestamps: false,
      freezeTableName: true
    }
  );

  return Artist;
};
