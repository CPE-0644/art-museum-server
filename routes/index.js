const ArtistRoute = require('./artists.route');
const ArtworkRoute = require('./artworks.route');
const ExhibitionRoute = require('./exhibitions.route');
const CollectionRoute = require('./collections.route');
const UserRoute = require('./users.route');

module.exports = route = {
  artistRoute: new ArtistRoute().router,
  artworkRoute: new ArtworkRoute().router,
  exhibitionRoute: new ExhibitionRoute().router,
  collectionRoute: new CollectionRoute().router,
  userRoute: new UserRoute().router
};
