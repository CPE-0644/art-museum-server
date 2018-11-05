const express = require('express');
const cors = require('cors');
const app = express();
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');
const passport = require('passport');
const session = require('express-session');

require('./services/passport');

app.use(
  session({ secret: 'fuck project db', resave: false, saveUninitialized: true })
);
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(bodyParser.json());
app.use(passport.initialize());
app.use(passport.session());

app.use(express.static(__dirname + '/public'));
app.use(cors());

// routes
const route = require('./routes/index');

app.get('/api/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

app.use('/api', route.authRoute);
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
