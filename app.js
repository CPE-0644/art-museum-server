const express = require('express');
const app = express();

const artistsRoute = require('./routes/artists');
const exhibitionRoute = require('./routes/exhibitions');
const artworkRoute = require('./routes/artworks');

app.use(express.static(__dirname + '/public'));

app.use(function(req, res, next) {
  // Website you wish to allow to connect
  res.setHeader(
    'Access-Control-Allow-Origin',
    'http://localhost:8081/#/artists'
  );

  // Request methods you wish to allow
  res.setHeader(
    'Access-Control-Allow-Methods',
    'GET, POST, OPTIONS, PUT, PATCH, DELETE'
  );

  // Request headers you wish to allow
  res.setHeader(
    'Access-Control-Allow-Headers',
    'X-Requested-With,content-type'
  );

  // Pass to next layer of middleware
  next();
});

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
