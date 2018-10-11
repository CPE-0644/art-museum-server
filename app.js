const express = require('express');

const app = express();

const artistsRoute = require('./routes/artists');

const data = require('./database/data.json');

app.use('/artists', artistsRoute);

app.get('/', (req, res) => {
  res.send(data);
});

const PORT = process.env.PORT || 3000;

const listener = app.listen(PORT, () => {
  const host = listener.address().address;
  const port = listener.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
