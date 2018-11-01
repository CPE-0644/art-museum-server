const express = require('express');
const cors = require('cors');

const app = express();

app.use(express.static(__dirname + '/public'));
app.use(cors());

// routes
const route = require('./routes/index');

app.get('/api/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

app.use('/api/artists', route.artistRoute);
app.use('/api/artworks', route.artworkRoute);
app.use('/api/exhibitions', route.exhibitionRoute);
app.use('/api/collections', route.collectionRoute);
app.use('/api/users', route.userRoute);

const PORT = process.env.PORT || 3000;

const listener = app.listen(PORT, () => {
  const host = listener.address().address;
  const port = listener.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
