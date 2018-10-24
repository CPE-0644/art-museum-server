const express = require('express');
const cors = require('cors');

const app = express();

const artistsRoute = require('./routes/artists');
const exhibitionRoute = require('./routes/exhibitions');
const artworkRoute = require('./routes/artworks');

app.use(express.static(__dirname + '/public'));
app.use(cors());

app.use('/api/artists', artistsRoute);
app.use('/api/exhibitions', exhibitionRoute);
app.use('/api/artworks', artworkRoute);

app.get('/api/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

const PORT = process.env.PORT || 3000;

const listener = app.listen(PORT, () => {
  const host = listener.address().address;
  const port = listener.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
