const express = require('express');

const app = express();

const artistsRoute = require('./routes/artists');
const exhibitionRoute = require('./routes/exhibitions');

const data = require('./database/data.json');

app.use('/api/artists', artistsRoute);
app.use('/api/exhibitions', exhibitionRoute);

app.get('/api/', (req, res) => {
  res.send('Art Museum API');
});

const PORT = process.env.PORT || 3000;

const listener = app.listen(PORT, () => {
  const host = listener.address().address;
  const port = listener.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
