const ArtistRoute = require('./artists');
const ArtworkRoute = require('./artworks');
const ExhibitionRoute = require('./exhibitions');
const CollectionRoute = require('./collections');
const UserRoute = require('./users');
const AuthRoute = require('./auth');

module.exports = route = {
  authRoute: new AuthRoute().router,
  artistRoute: new ArtistRoute().router,
  artworkRoute: new ArtworkRoute().router,
  exhibitionRoute: new ExhibitionRoute().router,
  collectionRoute: new CollectionRoute().router,
  userRoute: new UserRoute().router
};
