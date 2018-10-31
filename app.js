const express = require('express');
const cors = require('cors');
const Sequelize = require('sequelize');

const app = express();

const Artist = require('./models/artist')();
const Artwork = require('./models/artwork')();
const Exhibition = require('./models/exhibition')();
const Collection = require('./models/collection')();
const User = require('./models/user')();

Artist.hasMany(Artwork, { foreignKey: 'artist_id' });
Artwork.belongsTo(Artist, { foreignKey: 'artist_id' });

const ArtistRoute = require('./routes/artists');
const ArtworkRoute = require('./routes/artworks');
const ExhibitionRoute = require('./routes/exhibitions');
const CollectionRoute = require('./routes/collections');
const UserRoute = require('./routes/users');

app.use(express.static(__dirname + '/public'));
app.use(cors());

app.use('/api/artists', new ArtistRoute(Artist).router);
app.use('/api/artworks', new ArtworkRoute(Artwork).router);
app.use('/api/exhibitions', new ExhibitionRoute(Exhibition).router);
app.use('/api/collections', new CollectionRoute(Collection).router);
app.use('/api/users', new UserRoute(User).router);

app.get('/api/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

const PORT = process.env.PORT || 3000;

const listener = app.listen(PORT, () => {
  const host = listener.address().address;
  const port = listener.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
