function isLoggedIn(req, res, next) {
  if (req.isAuthenticated()) next();
  else next(new Error('Unauthenticated'));
}

function isAdmin(req, res, next) {
  if (!req.isAuthenticated()) next(new Error('Unauthenticated'));
  else {
    if (req.user.isAdmin == 1 || req.user.isAdmin == true) next();
    else next(new Error('Unauthorized'));
  }
}

module.exports = { isLoggedIn, isAdmin };
