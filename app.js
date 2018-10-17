const express = require('express');

const app = express();

// const artistsRoute = require('./routes/artists');
const exhibitionRoute = require('./routes/exhibitions');
// const usersRoute = require('./routes/users');
const artObjectsRoute = require('./routes/artObjects');

app.use(express.static(__dirname + '/public'));

// app.use('/api/artists', artistsRoute);
app.use('/api/exhibitions', exhibitionRoute);
// app.use('/api/users', usersRoute);
app.use('/api/art-objects', artObjectsRoute);

app.get('/api/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

const PORT = process.env.PORT || 3000;

const listener = app.listen(PORT, () => {
  const host = listener.address().address;
  const port = listener.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
