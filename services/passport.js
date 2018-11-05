const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;

const { User } = require('../config/db.config');

passport.serializeUser((user, done) => {
  done(null, user.museum_goer_id);
});

passport.deserializeUser((id, done) => {
  User.findOne({
    raw: true,
    where: {
      museum_goer_id: id
    }
  }).then(user => {
    return done(null, user);
  });
});

passport.use(
  new LocalStrategy(async function(username, password, done) {
    const user = await User.findOne({
      raw: true,
      where: { username: username }
    });
    if (!user) return done(null, false, { message: 'Incorrect username' });
    else if (password != user.password)
      return done(null, false, { message: 'Incorrect password' });
    else return done(null, user);
  })
);
