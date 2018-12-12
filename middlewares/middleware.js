function isLoggedIn(req, res, next) {
  console.log(req);
  if (req.isAuthenticated()) next();
  else next(new Error('Unauthenticated'));
}

function isAdmin(req, res, next) {
  console.log(req);
  if (!req.isAuthenticated()) next(new Error('Unauthenticated'));
  else {
    if (req.user.role == 'admin') next();
    else next(new Error('Unauthorized'));
  }
}

module.exports = { isLoggedIn, isAdmin };
